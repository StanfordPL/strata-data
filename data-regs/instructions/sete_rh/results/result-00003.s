  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label    
  xaddb %ch, %cl           #  2     0x5   3      OPC=xaddb_r8_rh    
  vmovd %ecx, %xmm9        #  3     0x8   4      OPC=vmovd_xmm_r32  
  movq %xmm9, %rax         #  4     0xc   5      OPC=movq_r64_xmm   
  retq                     #  5     0x11  1      OPC=retq           
                                                                    
.size target, .-target
