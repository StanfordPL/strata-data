  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  movq $0x7, %rbx                   #  1     0     10     OPC=movq_r64_imm64         
  vmovdqu %xmm1, %xmm8              #  2     0xa   4      OPC=vmovdqu_xmm_xmm        
  addb %bh, %bh                     #  3     0xe   2      OPC=addb_rh_rh             
  vpmovzxdq %xmm1, %xmm11           #  4     0x10  5      OPC=vpmovzxdq_xmm_xmm      
  vunpcklps %ymm11, %ymm8, %ymm3    #  5     0x15  5      OPC=vunpcklps_ymm_ymm_ymm  
  callq .move_128_064_xmm3_r12_r13  #  6     0x1a  5      OPC=callq_label            
  cmovnol %r13d, %ebx               #  7     0x1f  4      OPC=cmovnol_r32_r32        
  retq                              #  8     0x23  1      OPC=retq                   
                                                                                     
.size target, .-target
