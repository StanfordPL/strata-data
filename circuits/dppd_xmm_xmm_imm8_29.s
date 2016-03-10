  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmulsd %xmm2, %xmm1, %xmm14                   #  2     0x5   4      OPC=vmulsd_xmm_xmm_xmm  
  cvttpd2dq %xmm6, %xmm1                        #  3     0x9   4      OPC=cvttpd2dq_xmm_xmm   
  addsd %xmm14, %xmm1                           #  4     0xd   5      OPC=addsd_xmm_xmm       
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
