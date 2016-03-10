  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                      
.target:                              #        0     0      OPC=<label>                 
  vrsqrtss %xmm1, %xmm1, %xmm14       #  1     0     4      OPC=vrsqrtss_xmm_xmm_xmm    
  callq .move_byte_12_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label             
  movq $0x2, %rbx                     #  3     0x9   10     OPC=movq_r64_imm64          
  vmovshdup %ymm14, %ymm11            #  4     0x13  5      OPC=vmovshdup_ymm_ymm       
  vpunpckhdq %xmm11, %xmm11, %xmm11   #  5     0x18  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movq %xmm11, %rax                   #  6     0x1d  5      OPC=movq_r64_xmm            
  cmpxchgb %al, %r9b                  #  7     0x22  4      OPC=cmpxchgb_r8_r8          
  xchgl %ebx, %eax                    #  8     0x26  1      OPC=xchgl_eax_r32           
  retq                                #  9     0x27  1      OPC=retq                    
                                                                                        
.size target, .-target
