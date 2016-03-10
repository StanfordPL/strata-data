  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vmovmskps %xmm1, %r12d   #  1     0     4      OPC=vmovmskps_r32_xmm  
  testw %r12w, %r12w       #  2     0x4   4      OPC=testw_r16_r16      
  callq .read_cf_into_rbx  #  3     0x8   5      OPC=callq_label        
  xchgl %ebx, %r12d        #  4     0xd   3      OPC=xchgl_r32_r32      
  retq                     #  5     0x10  1      OPC=retq               
                                                                        
.size target, .-target
