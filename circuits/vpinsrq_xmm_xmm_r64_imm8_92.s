  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  movq %rbx, %xmm8            #  1     0    5      OPC=movq_xmm_r64        
  maxpd %xmm2, %xmm2          #  2     0x5  4      OPC=maxpd_xmm_xmm       
  vmovsd %xmm8, %xmm2, %xmm1  #  3     0x9  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  4     0xe  1      OPC=retq                
                                                                           
.size target, .-target
