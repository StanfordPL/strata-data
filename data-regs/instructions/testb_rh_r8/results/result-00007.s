  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  pxor %xmm1, %xmm1            #  1     0     4      OPC=pxor_xmm_xmm          
  vpbroadcastq %xmm1, %xmm1    #  2     0x4   5      OPC=vpbroadcastq_xmm_xmm  
  vandnpd %xmm1, %xmm1, %xmm3  #  3     0x9   4      OPC=vandnpd_xmm_xmm_xmm   
  vmovq %xmm3, %r12            #  4     0xd   5      OPC=vmovq_r64_xmm         
  xorb %r12b, %bl              #  5     0x12  3      OPC=xorb_r8_r8            
  testb %ah, %bl               #  6     0x15  2      OPC=testb_r8_rh           
  retq                         #  7     0x17  1      OPC=retq                  
                                                                               
.size target, .-target
