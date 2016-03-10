  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vmovq %xmm1, %xmm0            #  1     0     4      OPC=vmovq_xmm_xmm        
  vmulsd %xmm2, %xmm0, %xmm7    #  2     0x4   4      OPC=vmulsd_xmm_xmm_xmm   
  vhaddpd %xmm7, %xmm7, %xmm14  #  3     0x8   4      OPC=vhaddpd_xmm_xmm_xmm  
  movddup %xmm14, %xmm1         #  4     0xc   5      OPC=movddup_xmm_xmm      
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
