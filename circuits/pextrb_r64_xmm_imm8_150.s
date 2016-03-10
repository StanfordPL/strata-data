  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vcvtss2sil %xmm12, %r9d              #  2     0x5   5      OPC=vcvtss2sil_r32_xmm  
  callq .move_byte_6_of_ymm1_to_r9b    #  3     0xa   5      OPC=callq_label         
  xorl %ebx, %ebx                      #  4     0xf   2      OPC=xorl_r32_r32        
  movl %r9d, %eax                      #  5     0x11  3      OPC=movl_r32_r32        
  movb %al, %bl                        #  6     0x14  2      OPC=movb_r8_r8          
  retq                                 #  7     0x16  1      OPC=retq                
                                                                                     
.size target, .-target
