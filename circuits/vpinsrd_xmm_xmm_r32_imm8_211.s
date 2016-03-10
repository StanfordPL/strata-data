  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovupd %xmm2, %xmm3              #  1     0     4      OPC=vmovupd_xmm_xmm          
  vmovd %ebx, %xmm10                #  2     0x4   4      OPC=vmovd_xmm_r32            
  vpbroadcastd %xmm10, %xmm11       #  3     0x8   5      OPC=vpbroadcastd_xmm_xmm     
  vpunpckhdq %xmm11, %xmm3, %xmm12  #  4     0xd   5      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpcklqdq %xmm12, %xmm3, %xmm1  #  5     0x12  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                              #  6     0x17  1      OPC=retq                     
                                                                                       
.size target, .-target
