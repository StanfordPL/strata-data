  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movq %xmm1, %xmm6                #  1     0     4      OPC=movq_xmm_xmm             
  vpandn %xmm1, %xmm1, %xmm9       #  2     0x4   4      OPC=vpandn_xmm_xmm_xmm       
  vfmsub231ss %xmm6, %xmm9, %xmm2  #  3     0x8   5      OPC=vfmsub231ss_xmm_xmm_xmm  
  addss %xmm2, %xmm1               #  4     0xd   4      OPC=addss_xmm_xmm            
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
