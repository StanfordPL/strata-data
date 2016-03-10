  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  vmovq %rbx, %xmm1                   #  1     0     5      OPC=vmovq_xmm_r64     
  cmovnael %ecx, %ebx                 #  2     0x5   3      OPC=cmovnael_r32_r32  
  callq .move_byte_18_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label       
  callq .move_r8b_to_byte_4_of_rbx    #  4     0xd   5      OPC=callq_label       
  retq                                #  5     0x12  1      OPC=retq              
                                                                                  
.size target, .-target
