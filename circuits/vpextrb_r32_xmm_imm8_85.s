  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode            
.target:                                    #        0    0      OPC=<label>       
  xorq %rbx, %rbx                           #  1     0    3      OPC=xorq_r64_r64  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x3  5      OPC=callq_label   
  adcb %dh, %bl                             #  3     0x8  2      OPC=adcb_r8_rh    
  retq                                      #  4     0xa  1      OPC=retq          
                                                                                   
.size target, .-target
