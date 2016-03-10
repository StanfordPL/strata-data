  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vcvtps2pd %xmm2, %xmm12  #  1     0    4      OPC=vcvtps2pd_xmm_xmm  
  xorps %xmm1, %xmm1       #  2     0x4  3      OPC=xorps_xmm_xmm      
  por %xmm12, %xmm1        #  3     0x7  5      OPC=por_xmm_xmm        
  retq                     #  4     0xc  1      OPC=retq               
                                                                       
.size target, .-target