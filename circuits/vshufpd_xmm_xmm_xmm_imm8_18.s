  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  movddup %xmm2, %xmm7           #  1     0     4      OPC=movddup_xmm_xmm       
  vpmovsxbd %xmm3, %xmm10        #  2     0x4   5      OPC=vpmovsxbd_xmm_xmm     
  vmovsd %xmm10, %xmm7, %xmm10   #  3     0x9   5      OPC=vmovsd_xmm_xmm_xmm    
  vmovhlps %xmm10, %xmm3, %xmm1  #  4     0xe   5      OPC=vmovhlps_xmm_xmm_xmm  
  retq                           #  5     0x13  1      OPC=retq                  
                                                                                 
.size target, .-target
