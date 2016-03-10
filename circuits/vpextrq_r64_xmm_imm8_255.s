  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label          
  pmovzxbq %xmm9, %xmm13             #  2     0x5   6      OPC=pmovzxbq_xmm_xmm     
  movshdup %xmm13, %xmm12            #  3     0xb   5      OPC=movshdup_xmm_xmm     
  vmovsd %xmm12, %xmm13, %xmm14      #  4     0x10  5      OPC=vmovsd_xmm_xmm_xmm   
  vhsubpd %xmm14, %xmm9, %xmm1       #  5     0x15  5      OPC=vhsubpd_xmm_xmm_xmm  
  movq %xmm1, %rbx                   #  6     0x1a  5      OPC=movq_r64_xmm         
  retq                               #  7     0x1f  1      OPC=retq                 
                                                                                    
.size target, .-target
