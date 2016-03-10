  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vmulpd %xmm2, %xmm1, %xmm3                      #  2     0x5   4      OPC=vmulpd_xmm_xmm_xmm  
  addsubpd %xmm11, %xmm3                          #  3     0x9   5      OPC=addsubpd_xmm_xmm    
  movhlps %xmm3, %xmm1                            #  4     0xe   3      OPC=movhlps_xmm_xmm     
  vmovdqu %xmm1, %xmm15                           #  5     0x11  4      OPC=vmovdqu_xmm_xmm     
  punpcklqdq %xmm15, %xmm1                        #  6     0x15  5      OPC=punpcklqdq_xmm_xmm  
  retq                                            #  7     0x1a  1      OPC=retq                
                                                                                                
.size target, .-target
