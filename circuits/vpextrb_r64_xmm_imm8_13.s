  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  movmskpd %xmm1, %r8                 #  1     0     5      OPC=movmskpd_r64_xmm  
  movzbl %r8b, %ebx                   #  2     0x5   4      OPC=movzbl_r32_r8     
  shlb $0x1, %bl                      #  3     0x9   2      OPC=shlb_r8_one       
  xorb %bh, %bl                       #  4     0xb   2      OPC=xorb_r8_rh        
  callq .move_byte_13_of_ymm1_to_r8b  #  5     0xd   5      OPC=callq_label       
  xchgb %r8b, %bl                     #  6     0x12  3      OPC=xchgb_r8_r8       
  retq                                #  7     0x15  1      OPC=retq              
                                                                                  
.size target, .-target
