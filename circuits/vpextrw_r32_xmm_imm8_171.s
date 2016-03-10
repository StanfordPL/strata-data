  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vmovups %xmm1, %xmm15                     #  1     0     4      OPC=vmovups_xmm_xmm    
  vpmovzxwd %xmm15, %ymm1                   #  2     0x4   5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label        
  movq $0xab, %rbx                          #  4     0xe   10     OPC=movq_r64_imm64     
  xchgw %r9w, %bx                           #  5     0x18  4      OPC=xchgw_r16_r16      
  retq                                      #  6     0x1c  1      OPC=retq               
                                                                                         
.size target, .-target
