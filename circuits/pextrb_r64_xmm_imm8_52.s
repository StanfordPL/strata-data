  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode               
.target:                                    #        0    0      OPC=<label>          
  vmovdqu %xmm1, %xmm1                      #  1     0    4      OPC=vmovdqu_xmm_xmm  
  xorq %rbx, %rbx                           #  2     0x4  3      OPC=xorq_r64_r64     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x7  5      OPC=callq_label      
  xchgb %dl, %bl                            #  4     0xc  2      OPC=xchgb_r8_r8      
  retq                                      #  5     0xe  1      OPC=retq             
                                                                                      
.size target, .-target
