  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP   Bytes  Opcode                  
.target:                    #        0     0      OPC=<label>             
  vpmovsxdq %xmm1, %xmm15   #  1     0     5      OPC=vpmovsxdq_xmm_xmm   
  punpckhqdq %xmm1, %xmm15  #  2     0x5   5      OPC=punpckhqdq_xmm_xmm  
  movd %xmm15, %ebp         #  3     0xa   5      OPC=movd_r32_xmm        
  movq %rbp, %rbx           #  4     0xf   3      OPC=movq_r64_r64        
  retq                      #  5     0x12  1      OPC=retq                
                                                                          
.size target, .-target
