  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm14  #  1     0    5      OPC=movshdup_xmm_xmm  
  xorq %rbx, %rbx         #  2     0x5  3      OPC=xorq_r64_r64      
  vmovd %xmm14, %edi      #  3     0x8  4      OPC=vmovd_r32_xmm     
  xchgl %edi, %ebx        #  4     0xc  2      OPC=xchgl_r32_r32     
  retq                    #  5     0xe  1      OPC=retq              
                                                                     
.size target, .-target
