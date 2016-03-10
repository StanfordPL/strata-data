  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vxorps %xmm7, %xmm7, %xmm10     #  1     0     4      OPC=vxorps_xmm_xmm_xmm      
  movhlps %xmm10, %xmm1           #  2     0x4   4      OPC=movhlps_xmm_xmm         
  vpunpckhdq %xmm2, %xmm1, %xmm7  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm7, %xmm1         #  4     0xc   4      OPC=punpcklqdq_xmm_xmm      
  retq                            #  5     0x10  1      OPC=retq                    
                                                                                    
.size target, .-target
