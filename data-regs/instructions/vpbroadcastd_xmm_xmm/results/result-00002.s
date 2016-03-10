  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  movlhps %xmm2, %xmm2                            #  1     0     3      OPC=movlhps_xmm_xmm    
  vcvtdq2ps %xmm2, %xmm1                          #  2     0x3   4      OPC=vcvtdq2ps_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x7   5      OPC=callq_label        
  vmovapd %xmm2, %xmm9                            #  4     0xc   4      OPC=vmovapd_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x10  5      OPC=callq_label        
  movlhps %xmm1, %xmm1                            #  6     0x15  3      OPC=movlhps_xmm_xmm    
  retq                                            #  7     0x18  1      OPC=retq               
                                                                                               
.size target, .-target
