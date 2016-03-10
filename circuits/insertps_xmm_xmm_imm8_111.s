  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vminps %xmm1, %xmm2, %xmm15   #  1     0     4      OPC=vminps_xmm_xmm_xmm   
  vsqrtsd %xmm15, %xmm1, %xmm3  #  2     0x4   5      OPC=vsqrtsd_xmm_xmm_xmm  
  pandn %xmm3, %xmm1            #  3     0x9   4      OPC=pandn_xmm_xmm        
  unpckhpd %xmm1, %xmm1         #  4     0xd   4      OPC=unpckhpd_xmm_xmm     
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
