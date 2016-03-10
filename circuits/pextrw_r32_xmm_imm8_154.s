  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm10  #  1     0    5      OPC=movshdup_xmm_xmm  
  vmovq %xmm10, %rbx      #  2     0x5  5      OPC=vmovq_r64_xmm     
  movzwl %bx, %ebx        #  3     0xa  3      OPC=movzwl_r32_r16    
  retq                    #  4     0xd  1      OPC=retq              
                                                                     
.size target, .-target
