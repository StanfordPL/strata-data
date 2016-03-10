  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label    
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  2     0x5   5      OPC=callq_label    
  xaddl %r9d, %r11d                             #  3     0xa   4      OPC=xaddl_r32_r32  
  xaddl %r8d, %eax                              #  4     0xe   4      OPC=xaddl_r32_r32  
  callq .move_064_128_r8_r9_xmm1                #  5     0x12  5      OPC=callq_label    
  retq                                          #  6     0x17  1      OPC=retq           
                                                                                         
.size target, .-target
