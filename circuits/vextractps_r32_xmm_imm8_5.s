  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  xorq %rbx, %rbx                           #  1     0    3      OPC=xorq_r64_r64   
  testb %bl, %bh                            #  2     0x3  2      OPC=testb_rh_r8    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x5  5      OPC=callq_label    
  adcb %bh, %dl                             #  4     0xa  2      OPC=adcb_r8_rh     
  xchgl %ebx, %edx                          #  5     0xc  2      OPC=xchgl_r32_r32  
  retq                                      #  6     0xe  1      OPC=retq           
                                                                                    
.size target, .-target
