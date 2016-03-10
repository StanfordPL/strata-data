  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                  #  Line  RIP   Bytes  Opcode                
.target:                #        0     0      OPC=<label>           
  vmovq %rbx, %xmm13    #  1     0     5      OPC=vmovq_xmm_r64     
  movq %xmm13, %r14     #  2     0x5   5      OPC=movq_r64_xmm      
  xchgl %ecx, %ebx      #  3     0xa   2      OPC=xchgl_r32_r32     
  cmovnael %r14d, %ebx  #  4     0xc   4      OPC=cmovnael_r32_r32  
  retq                  #  5     0x10  1      OPC=retq              
                                                                    
.size target, .-target
