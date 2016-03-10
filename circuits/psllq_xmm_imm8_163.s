  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vcvttpd2dq %xmm1, %xmm3  #  1     0    4      OPC=vcvttpd2dq_xmm_xmm  
  punpckhqdq %xmm1, %xmm3  #  2     0x4  4      OPC=punpckhqdq_xmm_xmm  
  movddup %xmm3, %xmm1     #  3     0x8  4      OPC=movddup_xmm_xmm     
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target
