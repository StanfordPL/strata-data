  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vandnps %xmm2, %xmm2, %xmm0  #  1     0     4      OPC=vandnps_xmm_xmm_xmm  
  mulpd %xmm2, %xmm1           #  2     0x4   4      OPC=mulpd_xmm_xmm        
  addsubpd %xmm0, %xmm1        #  3     0x8   4      OPC=addsubpd_xmm_xmm     
  sqrtsd %xmm0, %xmm1          #  4     0xc   4      OPC=sqrtsd_xmm_xmm       
  retq                         #  5     0x10  1      OPC=retq                 
                                                                              
.size target, .-target
