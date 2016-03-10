  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vmovupd %xmm1, %xmm10    #  1     0    4      OPC=vmovupd_xmm_xmm     
  unpcklpd %xmm10, %xmm1   #  2     0x4  5      OPC=unpcklpd_xmm_xmm    
  punpckhqdq %xmm2, %xmm1  #  3     0x9  4      OPC=punpckhqdq_xmm_xmm  
  retq                     #  4     0xd  1      OPC=retq                
                                                                        
.size target, .-target
