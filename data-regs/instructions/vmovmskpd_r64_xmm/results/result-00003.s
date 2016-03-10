  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  xorq %rbx, %rbx         #  1     0    3      OPC=xorq_r64_r64       
  vmovmskpd %xmm1, %r10d  #  2     0x3  4      OPC=vmovmskpd_r32_xmm  
  cmovael %r10d, %ebx     #  3     0x7  4      OPC=cmovael_r32_r32    
  cmovgl %r10d, %ebx      #  4     0xb  4      OPC=cmovgl_r32_r32     
  retq                    #  5     0xf  1      OPC=retq               
                                                                      
.size target, .-target
