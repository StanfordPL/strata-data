  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  movddup %xmm1, %xmm0                #  1     0     4      OPC=movddup_xmm_xmm       
  vmovlhps %xmm1, %xmm0, %xmm1        #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label           
  movzbq %r8b, %rbx                   #  4     0xd   4      OPC=movzbq_r64_r8         
  retq                                #  5     0x11  1      OPC=retq                  
                                                                                      
.size target, .-target
