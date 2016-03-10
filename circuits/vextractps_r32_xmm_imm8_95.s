  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vfmsub132sd %xmm1, %xmm1, %xmm1   #  1     0     5      OPC=vfmsub132sd_xmm_xmm_xmm  
  movshdup %xmm1, %xmm6             #  2     0x5   4      OPC=movshdup_xmm_xmm         
  vpunpckhqdq %xmm6, %xmm1, %xmm13  #  3     0x9   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpunpckhdq %xmm13, %xmm13, %xmm1  #  4     0xd   5      OPC=vpunpckhdq_xmm_xmm_xmm   
  vmovd %xmm1, %ebx                 #  5     0x12  4      OPC=vmovd_r32_xmm            
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target
