  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  rcpss %xmm1, %xmm1                #  1     0    4      OPC=rcpss_xmm_xmm            
  vpunpckhqdq %xmm1, %xmm1, %xmm15  #  2     0x4  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movq %xmm15, %rbx                 #  3     0x8  5      OPC=movq_r64_xmm             
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
