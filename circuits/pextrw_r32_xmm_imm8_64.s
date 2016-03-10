  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movzwq %ax, %rbp                          #  2     0x5   4      OPC=movzwq_r64_r16  
  callq .set_zf                             #  3     0x9   5      OPC=callq_label     
  callq .read_zf_into_rbx                   #  4     0xe   5      OPC=callq_label     
  xaddw %bx, %bp                            #  5     0x13  4      OPC=xaddw_r16_r16   
  retq                                      #  6     0x17  1      OPC=retq            
                                                                                      
.size target, .-target
