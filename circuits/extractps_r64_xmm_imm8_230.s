  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vpmovsxbd %xmm1, %xmm5   #  1     0    5      OPC=vpmovsxbd_xmm_xmm   
  punpckhqdq %xmm5, %xmm1  #  2     0x5  4      OPC=punpckhqdq_xmm_xmm  
  movd %xmm1, %ebx         #  3     0x9  4      OPC=movd_r32_xmm        
  retq                     #  4     0xd  1      OPC=retq                
                                                                        
.size target, .-target
