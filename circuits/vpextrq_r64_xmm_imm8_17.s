  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vmovupd %xmm1, %xmm11         #  1     0     4      OPC=vmovupd_xmm_xmm     
  unpckhpd %xmm1, %xmm11        #  2     0x4   5      OPC=unpckhpd_xmm_xmm    
  vmovss %xmm11, %xmm11, %xmm2  #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm  
  movq %xmm2, %rbx              #  4     0xe   5      OPC=movq_r64_xmm        
  retq                          #  5     0x13  1      OPC=retq                
                                                                              
.size target, .-target
