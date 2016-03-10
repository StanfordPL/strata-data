  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vmulsd %xmm1, %xmm1, %xmm10  #  1     0     4      OPC=vmulsd_xmm_xmm_xmm    
  andnps %xmm10, %xmm10        #  2     0x4   4      OPC=andnps_xmm_xmm        
  vbroadcastsd %xmm10, %ymm0   #  3     0x8   5      OPC=vbroadcastsd_ymm_xmm  
  pmovzxbd %xmm0, %xmm1        #  4     0xd   5      OPC=pmovzxbd_xmm_xmm      
  retq                         #  5     0x12  1      OPC=retq                  
                                                                               
.size target, .-target
