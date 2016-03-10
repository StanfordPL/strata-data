  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label     
  tzcntl %r10d, %ebx                            #  2     0x5   5      OPC=tzcntl_r32_r32  
  callq .read_zf_into_rbx                       #  3     0xa   5      OPC=callq_label     
  callq .move_128_064_xmm1_r8_r9                #  4     0xf   5      OPC=callq_label     
  xchgb %bl, %r8b                               #  5     0x14  3      OPC=xchgb_r8_r8     
  retq                                          #  6     0x17  1      OPC=retq            
                                                                                          
.size target, .-target
