  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP   Bytes  Opcode             
.target:              #        0     0      OPC=<label>        
  movq %rcx, %rsi     #  1     0     3      OPC=movq_r64_r64   
  xaddw %cx, %dx      #  2     0x3   4      OPC=xaddw_r16_r16  
  shrq %cl, %rsi      #  3     0x7   3      OPC=shrq_r64_cl    
  vmovq %rsi, %xmm11  #  4     0xa   5      OPC=vmovq_xmm_r64  
  movq %xmm11, %rbx   #  5     0xf   5      OPC=movq_r64_xmm   
  retq                #  6     0x14  1      OPC=retq           
                                                               
.size target, .-target
