  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label     
  movzbl %cl, %r10d        #  2     0x5   4      OPC=movzbl_r32_r8   
  movzwl %r10w, %ecx       #  3     0x9   4      OPC=movzwl_r32_r16  
  callq .write_cl_to_pf    #  4     0xd   5      OPC=callq_label     
  setnp %ah                #  5     0x12  3      OPC=setnp_rh        
  retq                     #  6     0x15  1      OPC=retq            
                                                                     
.size target, .-target
