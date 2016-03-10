  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vaddpd %xmm1, %xmm1, %xmm12   #  1     0     4      OPC=vaddpd_xmm_xmm_xmm    
  vrsqrtss %xmm1, %xmm1, %xmm2  #  2     0x4   4      OPC=vrsqrtss_xmm_xmm_xmm  
  punpckhqdq %xmm12, %xmm2      #  3     0x8   5      OPC=punpckhqdq_xmm_xmm    
  movq %xmm2, %rbx              #  4     0xd   5      OPC=movq_r64_xmm          
  retq                          #  5     0x12  1      OPC=retq                  
                                                                                
.size target, .-target
