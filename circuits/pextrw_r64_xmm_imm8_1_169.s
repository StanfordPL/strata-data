  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP   Bytes  Opcode                 
.target:                    #        0     0      OPC=<label>            
  pmovsxwq %xmm1, %xmm12    #  1     0     6      OPC=pmovsxwq_xmm_xmm   
  punpckhdq %xmm12, %xmm12  #  2     0x6   5      OPC=punpckhdq_xmm_xmm  
  movq %xmm12, %r8          #  3     0xb   5      OPC=movq_r64_xmm       
  movzwl %r8w, %ebx         #  4     0x10  4      OPC=movzwl_r32_r16     
  retq                      #  5     0x14  1      OPC=retq               
                                                                         
.size target, .-target
