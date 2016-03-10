  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vpbroadcastb %xmm1, %xmm12   #  1     0     5      OPC=vpbroadcastb_xmm_xmm  
  vcvttpd2dq %xmm12, %xmm0     #  2     0x5   5      OPC=vcvttpd2dq_xmm_xmm    
  vmovsd %xmm0, %xmm1, %xmm13  #  3     0xa   4      OPC=vmovsd_xmm_xmm_xmm    
  movaps %xmm13, %xmm2         #  4     0xe   4      OPC=movaps_xmm_xmm        
  xorps %xmm13, %xmm2          #  5     0x12  4      OPC=xorps_xmm_xmm         
  movq %xmm2, %xmm1            #  6     0x16  4      OPC=movq_xmm_xmm          
  retq                         #  7     0x1a  1      OPC=retq                  
                                                                               
.size target, .-target
