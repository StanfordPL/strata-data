  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpxor %xmm5, %xmm5, %xmm0                     #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  movq $0x80, %rbx                              #  2     0x4   10     OPC=movq_r64_imm64     
  unpckhpd %xmm0, %xmm1                         #  3     0xe   4      OPC=unpckhpd_xmm_xmm   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0x12  5      OPC=callq_label        
  xaddl %r12d, %r13d                            #  5     0x17  4      OPC=xaddl_r32_r32      
  cmovncl %r11d, %ebx                           #  6     0x1b  4      OPC=cmovncl_r32_r32    
  retq                                          #  7     0x1f  1      OPC=retq               
                                                                                             
.size target, .-target
