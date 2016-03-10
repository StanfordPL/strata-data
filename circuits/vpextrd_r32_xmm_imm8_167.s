  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovshdup %xmm11, %xmm6              #  2     0x5   5      OPC=vmovshdup_xmm_xmm  
  vmovq %xmm6, %rcx                    #  3     0xa   5      OPC=vmovq_r64_xmm      
  movl %ecx, %ebx                      #  4     0xf   2      OPC=movl_r32_r32       
  retq                                 #  5     0x11  1      OPC=retq               
                                                                                    
.size target, .-target
