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
  cmovpol %eax, %r8d                        #  3     0x8  4      OPC=cmovpol_r32_r32  
  adcb %r8b, %bl                            #  4     0xc  3      OPC=adcb_r8_r8       
  retq                                      #  5     0xf  1      OPC=retq             
                                                                                      
.size target, .-target
