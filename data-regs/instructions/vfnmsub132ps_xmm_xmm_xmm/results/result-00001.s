  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vpor %xmm1, %xmm1, %xmm14          #  1     0     4      OPC=vpor_xmm_xmm_xmm          
  subps %xmm1, %xmm14                #  2     0x4   4      OPC=subps_xmm_xmm             
  vandnpd %xmm3, %xmm14, %xmm10      #  3     0x8   4      OPC=vandnpd_xmm_xmm_xmm       
  vfnmsub213ps %xmm2, %xmm10, %xmm1  #  4     0xc   5      OPC=vfnmsub213ps_xmm_xmm_xmm  
  retq                               #  5     0x11  1      OPC=retq                      
                                                                                         
.size target, .-target
