  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                     
.target:                              #        0    0      OPC=<label>                
  vcvtsd2ss %xmm1, %xmm1, %xmm1       #  1     0    4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  callq .move_byte_14_of_ymm1_to_r8b  #  2     0x4  5      OPC=callq_label            
  movzbl %r8b, %ebx                   #  3     0x9  4      OPC=movzbl_r32_r8          
  retq                                #  4     0xd  1      OPC=retq                   
                                                                                      
.size target, .-target
