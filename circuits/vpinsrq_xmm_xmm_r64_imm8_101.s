  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  movdqu %xmm2, %xmm6         #  1     0     4      OPC=movdqu_xmm_xmm      
  movq %rbx, %xmm2            #  2     0x4   5      OPC=movq_xmm_r64        
  vmovddup %xmm2, %xmm5       #  3     0x9   4      OPC=vmovddup_xmm_xmm    
  vmovsd %xmm6, %xmm5, %xmm1  #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
