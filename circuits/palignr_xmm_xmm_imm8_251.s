  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  xorps %xmm1, %xmm1     #  1     0    3      OPC=xorps_xmm_xmm     
  unpckhpd %xmm1, %xmm1  #  2     0x3  4      OPC=unpckhpd_xmm_xmm  
  subsd %xmm1, %xmm1     #  3     0x7  4      OPC=subsd_xmm_xmm     
  retq                   #  4     0xb  1      OPC=retq              
                                                                    
.size target, .-target
