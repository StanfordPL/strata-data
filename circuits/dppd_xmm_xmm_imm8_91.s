  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  mulsd %xmm2, %xmm1           #  1     0     4      OPC=mulsd_xmm_xmm         
  rsqrtps %xmm2, %xmm2         #  2     0x4   3      OPC=rsqrtps_xmm_xmm       
  vpbroadcastq %xmm1, %xmm5    #  3     0x7   5      OPC=vpbroadcastq_xmm_xmm  
  vphaddd %xmm5, %xmm2, %xmm8  #  4     0xc   5      OPC=vphaddd_xmm_xmm_xmm   
  andnps %xmm8, %xmm8          #  5     0x11  4      OPC=andnps_xmm_xmm        
  addpd %xmm5, %xmm8           #  6     0x15  5      OPC=addpd_xmm_xmm         
  movupd %xmm8, %xmm1          #  7     0x1a  5      OPC=movupd_xmm_xmm        
  retq                         #  8     0x1f  1      OPC=retq                  
                                                                               
.size target, .-target
