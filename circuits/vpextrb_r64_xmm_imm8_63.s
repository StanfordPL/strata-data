  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  pmovsxbq %xmm1, %xmm5               #  1     0     5      OPC=pmovsxbq_xmm_xmm         
  maxps %xmm1, %xmm1                  #  2     0x5   3      OPC=maxps_xmm_xmm            
  vfmadd132ss %xmm5, %xmm1, %xmm1     #  3     0x8   5      OPC=vfmadd132ss_xmm_xmm_xmm  
  callq .move_byte_15_of_ymm1_to_r9b  #  4     0xd   5      OPC=callq_label              
  movzbl %r9b, %ebx                   #  5     0x12  4      OPC=movzbl_r32_r8            
  retq                                #  6     0x16  1      OPC=retq                     
                                                                                         
.size target, .-target
