  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  movshdup %xmm3, %xmm1                           #  1     0     4      OPC=movshdup_xmm_xmm      
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label           
  movhlps %xmm10, %xmm10                          #  3     0x9   4      OPC=movhlps_xmm_xmm       
  vmovhlps %xmm1, %xmm11, %xmm8                   #  4     0xd   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  5     0x11  5      OPC=callq_label           
  vxorpd %xmm3, %xmm10, %xmm1                     #  6     0x16  4      OPC=vxorpd_xmm_xmm_xmm    
  retq                                            #  7     0x1a  1      OPC=retq                  
                                                                                                  
.size target, .-target
