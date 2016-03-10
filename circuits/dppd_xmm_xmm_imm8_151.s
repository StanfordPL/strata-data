  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  mulpd %xmm2, %xmm1                              #  1     0     4      OPC=mulpd_xmm_xmm      
  vpxor %xmm11, %xmm11, %xmm3                     #  2     0x4   5      OPC=vpxor_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label        
  movapd %xmm8, %xmm3                             #  4     0xe   5      OPC=movapd_xmm_xmm     
  addsd %xmm3, %xmm1                              #  5     0x13  4      OPC=addsd_xmm_xmm      
  movlhps %xmm1, %xmm1                            #  6     0x17  3      OPC=movlhps_xmm_xmm    
  retq                                            #  7     0x1a  1      OPC=retq               
                                                                                               
.size target, .-target
