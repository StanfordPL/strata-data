  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  unpckhpd %xmm1, %xmm1  #  1     0    4      OPC=unpckhpd_xmm_xmm  
  vmovapd %xmm1, %xmm4   #  2     0x4  4      OPC=vmovapd_xmm_xmm   
  vmovq %xmm4, %rbx      #  3     0x8  5      OPC=vmovq_r64_xmm     
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
