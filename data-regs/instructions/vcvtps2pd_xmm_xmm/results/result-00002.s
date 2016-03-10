  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label        
  vzeroall                                      #  2     0x5   3      OPC=vzeroall           
  callq .move_r9b_to_byte_10_of_ymm1            #  3     0x8   5      OPC=callq_label        
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  4     0xd   5      OPC=callq_label        
  callq .move_byte_18_of_ymm1_to_r9b            #  5     0x12  5      OPC=callq_label        
  xchgl %r9d, %r12d                             #  6     0x17  3      OPC=xchgl_r32_r32      
  callq .move_064_128_r8_r9_xmm2                #  7     0x1a  5      OPC=callq_label        
  vcvtps2pd %xmm2, %ymm1                        #  8     0x1f  4      OPC=vcvtps2pd_ymm_xmm  
  retq                                          #  9     0x23  1      OPC=retq               
                                                                                             
.size target, .-target
