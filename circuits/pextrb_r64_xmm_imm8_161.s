  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label    
  movzbq %al, %rbx                          #  2     0x5  4      OPC=movzbq_r64_r8  
  xchgb %ah, %bl                            #  3     0x9  2      OPC=xchgb_r8_rh    
  retq                                      #  4     0xb  1      OPC=retq           
                                                                                    
.size target, .-target
