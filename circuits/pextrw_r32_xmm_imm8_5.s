  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm5   #  1     0     4      OPC=vunpckhpd_xmm_xmm_xmm  
  pmovzxwq %xmm5, %xmm13          #  2     0x4   6      OPC=pmovzxwq_xmm_xmm       
  movq $0x6, %rbx                 #  3     0xa   10     OPC=movq_r64_imm64         
  vmovdqa %xmm13, %xmm3           #  4     0x14  5      OPC=vmovdqa_xmm_xmm        
  callq .move_128_064_xmm3_r8_r9  #  5     0x19  5      OPC=callq_label            
  addb %bh, %bh                   #  6     0x1e  2      OPC=addb_rh_rh             
  cmovzw %r9w, %bx                #  7     0x20  5      OPC=cmovzw_r16_r16         
  retq                            #  8     0x25  1      OPC=retq                   
                                                                                   
.size target, .-target
